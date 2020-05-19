--사원들의 전체 연봉 총액을 계산하기
CREATE OR REPLACE FUNCTION GET_TOTAL_SALARY
RETURN NUMBER
IS
    v_total_salary  number := 0;
    v_salary        employees.salary%type;
    v_comm          employees.commission_pct%type;
    v_annual_salary employees.salary%type; 
    --커서를 선언
    CURSOR emp_list IS
    SELECT SALARY, NVL(COMMISSION_PCT, 0) COMM
    FROM EMPLOYEES;
BEGIN
    --커서를  FOR문에서 실행시킨다.
    --FOR 변수명 IN 커서명 LOOP
    --     수행문;
    --END LOOP;
    FOR emp IN emp_list LOOP
        v_salary := emp.SALARY;
        v_comm := emp.COMM;
        v_annual_salary := v_salary * 12 + trunc(v_salary * v_comm) * 12;
        v_total_salary := v_total_salary + v_annual_salary;
    END LOOP;
    
    RETURN v_total_salary;
END;