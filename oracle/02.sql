
--Chapter 02 

--结构化查询语法  SQL :  
--SELECT * FROM TABLE
--投影查询
--SELECT COL1 , COL2 FROM TABLE

--运算符
--SELECT EMPLOYEE_ID , SALARY*6 + SALARY*1.2*6 FROM EMPLOYEES
--别名
--SELECT EMPLOYEE_ID , (SALARY*6 + SALARY*1.2*6)  [AS] "年薪" FROM EMPLOYEES
--NULL
--SELECT SALARY+COMM FROM EMPLOYEE   --->   NULL+ANY = NULL

-- || 连接运算符
--SELECT FIRST_NAME||LAST_NAME FROM EMPLOYEES
--原义字符串
--SELECT FIRST_NAME||'  HAHA  '||LAST_NAME FROM EMPLOYEES

--DISTINCT   去掉重复内容的查询
--SELECT DISTINCT COUNTRY_NAME     FROM COUNTRIES2

--select * from emp

--Chapter 02  END


