-- �μ����̺��� ��� �μ� ������ ��ȸ�ϱ�
SELECT department_id, department_name, manager_id, location_id
FROM DEPARTMENTS;

-- �μ����̺��� ��ġ���̵� 1700���� �ƴ� �μ� ���� ��ȸ�ϱ�
SELECT department_id, department_name, manager_id, location_id
FROM departments
WHERE location_id NOT IN(1700);

-- 100����� �����ϴ� �μ����� ��ȸ�ϱ�
SELECT department_id, department_name, manager_id, location_id
FROM departments
WHERE manager_id = 100;

-- �μ����� 'IT'�� �μ��� ���� ��ȸ�ϱ�
SELECT department_id, department_name, manager_id, location_id
FROM departments
WHERE department_name = 'IT';

-- ��ġ���̵� 1700���� ������ �ּ�, �����ȣ, ���ø�, �����ڵ带 ��ȸ�ϱ�
SELECT street_address AS �����ּ�, postal_code AS �����ȣ, city AS ���ø�, country_id AS �����ڵ�
FROM locations
WHERE location_id = 1700;

-- �ּұ޿��� 2000�̻� 5000������ ������ �������̵�, ��������, �ּұ޿�, �ִ�޿� ��ȸ�ϱ�
SELECT job_id, job_title, min_salary, max_salary
FROM jobs
WHERE min_salary BETWEEN 2000 AND 5000;

-- �ִ�޿��� 20000���� �ʰ��ϴ� ������ ���̵�, ��������, �ּұ޿�, �ִ�޿� ��ȸ�ϱ�
SELECT job_id, job_title, min_salary, max_salary
FROM jobs
WHERE max_salary > 20000;


-- 100�������� �����ϴ� ����� ���̵�, �̸�, �μ����̵��� ��ȸ�ϱ�
SELECT employee_id, first_name, manager_id, department_id
FROM employees
WHERE manager_id = 100;

-- 80�� �μ����� �ٹ��ϰ� �޿��� 8000�� �̻� �޴� ����� ���̵�, �̸�, �޿�, Ŀ�̼�����Ʈ ��ȸ�ϱ�
SELECT employee_id, first_name, salary, commission_pct
FROM employees
WHERE department_id = 80
AND salary >= 8000;

-- ������ SA_REP�̰�, Ŀ�̼�����Ʈ�� 0.25�̻��� ����� ���̵�, �̸�, �޿�, Ŀ�̼�����Ʈ�� ��ȸ�ϱ�
SELECT employee_id, first_name, salary, commission_pct
FROM employees
WHERE job_id = 'SA_REP'
AND commission_pct >= 0.25;


-- 80�� �μ��� �ٹ��ϰ�, �޿��� 10000�� �̻��� ����� ���̵�, �̸�, �޿�, ������ ��ȸ�ϱ�
 --   ���� = (�޿� + �޿�*Ŀ�̼�)*12��
 --   ������ ��Ī�� annual_salary��.
SELECT employee_id, first_name, salary, (salary + (salary * COMMISSION_PCT)*12) AS  ANNUAL_SALARY
FROM employees
WHERE department_id = 80
AND salary >= 10000;



-- 80�� �μ��� �ٹ��ϰ�, 147�� �������� �����ϴ� ��� �߿��� Ŀ�̼��� 0.1�� ����� 
  --  ������̵�, �̸�, ����, �޿�, Ŀ�̼�����Ʈ�� ��ȸ�ϱ�
SELECT employee_id, first_name, job_id, salary, commission_pct
FROM employees
WHERE department_id = 80
AND manager_id = 147
AND commission_pct = 0.1;

-- ������� �����ϴ� ������ �ߺ����� ��ȸ�ϱ�
SELECT DISTINCT job_id
FROM employees;

-- ������� �Ҽӵ� �μ����̵� ��� ��ȸ�ϱ�
SELECT DISTINCT department_id
FROM employees;


-- �޿��� 12000�� �Ѵ� ����� �̸��� �޿��� ��ȸ�ϱ�
SELECT first_name, salary
FROM employees
WHERE salary > 12000;


-- �޿��� 5000�̻� 12000������ ����� �̸��� �޿��� ��ȸ�ϱ�
SELECT first_name, salary
FROM employees
WHERE salary BETWEEN 5000 AND 12000;


-- 2007�⿡ �Ի��� ����� ���̵�, �̸�, �Ի����� ��ȸ�ϱ�
SELECT employee_id, first_name, hire_date
FROM employees
WHERE hire_date LIKE '07/%';

-- 20�� 50�� �μ��� �Ҽӵ� ����� �̸��� �μ���ȣ�� ��ȸ�ϰ�, �̸��� ���ĺ������� �����ؼ�  ��ȸ�ϱ�
SELECT first_name, department_id
FROM employees
WHERE department_id IN (20,50)
ORDER BY first_name ASC;


-- �޿��� 5000�̻� 12000���ϰ�, 20���� 50�� �μ��� �Ҽӵ� ����� �̸��� �޿�, �μ���ȣ�� ��ȸ�ϱ�
SELECT salary, department_id
FROM employees
WHERE salary BETWEEN 5000 AND 12000
AND department_id IN (20,50);
-- �����ڰ� ���� ����� �̸��� ����, �޿��� ��ȸ�ϱ�
SELECT first_name, salary
FROM employees
WHERE manager_id IS NULL;

-- ������ 'SA_MAN'�̰ų� 'ST_MAN'�� �����߿��� �޿��� 8000�̻� �޴� ����� ���̵�, �̸�, ����, �޿��� ��ȸ�ϱ�
SELECT employee_id, first_name, job_id, salary
FROM employees
WHERE job_id IN ('SA_MAN','ST_MAN')
AND salary >= 8000;


