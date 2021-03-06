-- SELECT * FROM EMPLOYEES WHERE JOB_ID IN (
-- 	SELECT * FROM JOBS WHERE JOB_TITLE LIKE '%Manager'
-- )


--ANY
-- SELECT * FROM EMPLOYEES
-- WHERE
-- 	SALARY > ANY (
-- 			SELECT E.SALARY FROM EMPLOYEES E WHERE E.DEPARTMENT_ID = 80
-- 	)   AND
-- 	DEPARTMENT_ID<>80


--ALL
-- SELECT * FROM EMPLOYEES
-- WHERE
-- 	SALARY > ALL (
-- 			SELECT E.SALARY FROM EMPLOYEES E WHERE E.DEPARTMENT_ID = 80
-- 	)   AND
-- 	DEPARTMENT_ID<>80


--MULTI COLUMN   ( NOTE : COLUMN INDEX )
-- SELECT FIRST_NAME , LAST_NAME , JOB_ID , HIRE_DATE , DEPARTMENT_ID FROM EMPLOYEES
-- WHERE
-- ( DEPARTMENT_ID , JOB_ID) IN (
-- 		SELECT   DEPARTMENT_ID , JOB_ID FROM EMPLOYEES WHERE  TO_CHAR(HIRE_DATE , 'YYYY') = '2003'
--
-- )  AND
-- TO_CHAR(HIRE_DATE , 'YYYY') <> '2003'


--哪些人是经理 : SELECT IN FROM
-- SELECT EMPLOYEE_ID , FIRST_NAME , DEPARTMENT_ID FROM EMPLOYEES E
-- WHERE SALARY > (
-- 		SELECT AVG(SALARY) FROM EMPLOYEES WHERE DEPARTMENT_ID = E.DEPARTMENT_ID
-- )

--哪些人是经理 : BY EXISTS
-- SELECT FIRST_NAME||' '||LAST_NAME NAME , JOB_ID , SALARY , DEPARTMENT_ID FROM EMPLOYEES E
--   WHERE EXISTS (
--   	SELECT EMPLOYEE_ID  FROM EMPLOYEES WHERE  MANAGER_ID = E.EMPLOYEE_ID
--   )
