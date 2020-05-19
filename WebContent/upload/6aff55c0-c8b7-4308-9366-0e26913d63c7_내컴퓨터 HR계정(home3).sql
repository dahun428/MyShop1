--1. ��� �������� ��� �������̵� ��ȸ�ϱ�
SELECT employee_id, first_name, job_id
FROM employees
ORDER BY employee_id;
--2. �޿��� 12,000�޷� �̻� �޴� ������ �̸��� �޿��� ��ȸ�ϱ�
SELECT first_name, salary
FROM employees
WHERE salary >= 12000 
ORDER BY employee_id;

--3. ������ȣ�� 176�� ������ ���� �μ����� �ٹ��ϴ� ������ ���̵�� �̸� �������̵� ��ȸ�ϱ�
SELECT employee_id, first_name, job_id
FROM employees
WHERE JOB_ID = (SELECT job_id FROM employees WHERE EMPLOYEE_ID = 176);

--4. �޿��� 12,000�޷� �̻� 15,000�޷� ���� �޴� �������� ���� ���̵�� �̸��� �޿��� ��ȸ�ϱ�
SELECT employee_id, first_name, salary
FROM employees
WHERE salary BETWEEN 12000 AND 15000
ORDER BY employee_id;


--5. 2005�� 1�� 1�Ϻ��� 2000�� 6�� 30�� ���̿� �Ի��� ������ ���̵�, �̸�, �������̵�, �Ի����� ��ȸ�ϱ�
SELECT *
FROM employees
WHERE hire_date BETWEEN TO_DATE('2000-06-30', 'YYYY-MM-DD') AND TO_DATE('2005-01-01', 'YYYY-MM-DD')
ORDER BY HIRE_DATE;

--6. �޿��� 5,000�޷��� 12,000�޷� �����̰�, �μ���ȣ�� 20 �Ǵ� 50�� ������ �̸��� �޿��� ��ȸ�ϱ�
SELECT first_name, salary, department_id
FROM employees
WHERE salary BETWEEN 5000 AND 12000
AND department_id IN (20, 50)
ORDER BY department_id;

--7. �����ڰ� ���� ������ �̸��� �������̵� ��ȸ�ϱ�
SELECT first_name, job_id
FROM employees
WHERE manager_id IS NULL;

--8. Ŀ�̼��� �޴� ��� ������ �̸��� �޿�, Ŀ�̼��� �޿� �� Ŀ�̼��� ������������ �����ؼ� ��ȸ�ϱ�
SELECT employee_id, first_name, salary, commission_pct 
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY SALARY DESC, commission_pct DESC;

--9. �̸��� 2��° ���ڰ� e�� ��� ������ �̸��� ��ȸ�ϱ�
SELECT first_name
FROM employees
WHERE first_name LIKE '_e%';

--10. �������̵� ST_CLERK �Ǵ� SA_REP�̰� �޿��� 2,500�޷�, 3,500�޷�, 7,000�޷� �޴� ��� ������ �̸��� �������̵�, �޿��� ��ȸ�ϱ�
SELECT first_name, job_id, salary
FROM employees
WHERE job_id IN ('ST_CLERK', 'SA_REP')
AND salary IN (2500, 3500, 7000)
ORDER BY salary;
--11. ��� ������ �̸��� �Ի���, �ٹ� ���� ���� ����Ͽ� ��ȸ�ϱ�, �ٹ����� ���� ������ �ݿø��ϰ�, �ٹ��������� �������� ������������ �����ϱ�
SELECT first_name, hire_date, ROUND(MONTHS_BETWEEN(SYSDATE, hire_date)) AS WORKING_MONTH
FROM employees
ORDER BY WORKING_MONTH;

--12. ������ �̸��� Ŀ�̼��� ��ȸ�ϱ�, Ŀ�̼��� ���� �ʴ� ������ '����'���� ǥ���ϱ�
SELECT first_name, NVL(TO_CHAR(commission_pct), '����')
FROM employees;
--13. ��� ������ �̸�, �μ���ȣ, �μ��̸��� ��ȸ�ϱ�
SELECT a.first_name, a.department_id, b.department_name
FROM employees A, departments B
WHERE a.department_id = b.department_id
ORDER BY a.department_id;

--14. 80���μ��� �Ҽӵ� ������ �̸��� �������̵�, ��������, �μ��̸��� ��ȸ�ϱ�
SELECT a.employee_id ,a.first_name, a.job_id, c.job_title, b.department_name
FROM employees A, departments B, JOBS C
WHERE a.department_id = b.department_id
AND A.JOB_ID = C.JOB_ID
AND a.department_id = 80
ORDER BY a.employee_id;

--15. Ŀ�̼��� �޴� ��� ������ �̸��� �������̵�, ��������, �μ��̸�, �μ������� ���ø��� ��ȸ�ϱ�
SELECT a.first_name, a.job_id, b.job_title, c.department_name, d.street_address, d.city, a.commission_pct
FROM employees A, JOBS B, departments C, LOCATIONS D
WHERE a.job_id = b.job_id AND a.department_id = c.department_id AND c.location_id = d.location_id 
AND a.commission_pct IS NOT NULL;

--16. ������ �������� �ΰ� �ִ� ��� �μ����̵�� �μ��̸��� ��ȸ�ϱ�
SELECT b.department_id, b.department_name, c.country_id, d.region_id
FROM departments B, locations C, COUNTRIES D
WHERE b.location_id = c.location_id
AND c.country_id = d.country_id
AND d.region_id = 1;

--17. ������ �̸��� �ҼӺμ���, �޿�, �޿� ����� ��ȸ�ϱ�
SELECT a.first_name, b.department_name, a.salary, C.GRA
FROM employees A, departments B, JOB_GRADES C
WHERE a.department_id = b.department_id 
AND a.salary BETWEEN C.LOWEST_SAL AND c.highest_sal
ORDER BY c.gra DESC;

--18. ������ �̸��� �ҼӺμ���, �ҼӺμ��� �����ڸ��� ��ȸ�ϱ�, �ҼӺμ��� ���� ������ �ҼӺμ��� '����, �����ڸ� '����'���� ǥ���ϱ�
SELECT a.first_name, NVL(b.department_name,'����'), NVL(c.first_name,'����')
FROM employees A, departments B, employees C
WHERE a.department_id = b.department_id(+)
AND b.manager_id = c.employee_id(+);

--19. ��� ����� �̸�, �������̵�, �޿�, �ҼӺμ����� ��ȸ�ϱ�
SELECT a.first_name, a.job_id, a.salary, b.department_name
FROM employees A, departments B
WHERE a.department_id = b.department_id(+);

--20. ��� ����� �̸�, �������̵�, ��������, �޿�, �ּұ޿�, �ִ�޿��� ��ȸ�ϱ�
SELECT a.first_name, a.job_id, b.job_title, a.salary, b.min_salary, b.max_salary 
FROM employees A, JOBS B
WHERE A.JOB_ID = B.JOB_ID
ORDER BY a.salary DESC;

--21. ��� ����� �̸�, �������̵�, ��������, �޿�, �ּұ޿��� ���� �޿��� ���̸� ��ȸ�ϱ�
SELECT a.first_name, a.job_id, b.job_title, a.salary, b.min_salary, a.salary - b.min_salary
FROM employees A, JOBS B
WHERE A.JOB_ID = b.job_id;

--22. Ŀ�̼��� �޴� ��� ����� ���̵�, �μ��̸�, �ҼӺμ��� ������(���ø�)�� ��ȸ�ϱ�
SELECT a.first_name, NVL(b.department_name,'����') AS �μ��̸�, NVL(c.city, '����') AS ������
FROM employees A, departments B, locations C
WHERE a.department_id = b.department_id(+)
AND b.location_id = c.location_id(+)
AND a.commission_pct IS NOT NULL;

--23. �̸��� A�� a�� �����ϴ� ��� ����� �̸��� ����, ��������, �޿�, �ҼӺμ����� ��ȸ�ϱ�

SELECT a.first_name, a.job_id, b.job_title, a.salary, c.department_name
FROM EMPLOYEES A, JOBS B, departments C
WHERE A.JOB_ID = b.job_id AND a.department_id = c.department_id 
AND FIRST_NAME LIKE 'A%' OR FIRST_NAME LIKE 'a%';

--24. 30, 60, 90�� �μ��� �ҼӵǾ� �ִ� ����� �߿��� 100���� �����ϴ� ������� �̸�, ����, �޿�,
--    �޿������ ��ȸ�ϱ�
SELECT a.first_name, a.job_id, a.salary, b.gra
FROM employees A, JOB_GRADES B
WHERE a.department_id IN (30,60,90)
AND a.manager_id = 100
AND a.salary BETWEEN B.LOWEST_SAL AND b.highest_sal;

--25. 80�� �μ��� �Ҽӵ� ������� �̸�, ����, ��������, �޿�, �ּұ޿�, �ִ�޿�, �޿����, 
--    �ҼӺμ����� ��ȸ�ϱ�
SELECT a.department_id, a.first_name, a.job_id, b.job_title, a.salary, b.min_salary, b.max_salary, c.gra, d.department_name
FROM employees A, JOBS B, JOB_GRADES C, departments D
WHERE A.JOB_ID = B.JOB_ID
AND a.department_id = 80
AND a.department_id = d.department_id
AND a.salary BETWEEN C.LOWEST_SAL AND c.highest_sal
ORDER BY c.gra DESC;

--26. ������߿��� �ڽ��� ��纸�� ���� �Ի��� ������� �̸�, �Ի���, ����� �̸�, ����� �Ի�����
--    ��ȸ�ϱ�
SELECT a.employee_id, a.first_name, a.hire_date, b.first_name, b.hire_date
FROM employees A, employees B
WHERE a.manager_id = b.employee_id
AND a.hire_date < b.hire_date
ORDER BY a.employee_id;

--27. �μ����� IT�� �μ��� �ٹ��ϴ� ������� �̸���, ����, �޿�, �޿����, ����� �̸��� ������
--    ��ȸ�ϱ�

SELECT a.first_name, a.job_id, a.salary, c.gra, d.first_name, d.job_id
FROM employees A, departments B, JOB_GRADES C, employees D
WHERE a.department_id = b.department_id
AND a.salary BETWEEN c.lowest_sal AND c.highest_sal
AND a.manager_id = d.employee_id
AND b.department_name = 'IT';

--28. 'ST_CLERK'�� �ٹ��ϴٰ� �ٸ� �������� ������ ����� ���̵�, �̸�, ������ �μ���,
--     ���� ����, ���� �ٹ��μ����� ��ȸ�ϱ�
SELECT a.employee_id, b.first_name, c.department_name, b.job_id, D.department_name 
FROM job_history A, employees B, departments C, departments D
WHERE a.employee_id = b.employee_id
AND a.department_id = c.department_id 
AND b.department_id = D.department_id
AND A.JOB_ID = 'ST_CLERK';
