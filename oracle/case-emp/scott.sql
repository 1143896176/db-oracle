
--1.选择部门30中的有所员工：
SELECT * FROM emp WHERE deptno=30;

--2.列出所有办事员(CLERK)的姓名，编号和部门编号：
SELECT ename,empno,deptno FROM emp WHERE UPPER(job)='CLERK';

--3.列出佣金(comm)高于薪金(sal)的员工：
SELECT * FROM emp WHERE comm>sal;

--4.找出佣金（comm）高于薪金百分60的员工
SELECT * FROM emp WHERE comm>(sal*0.6);

--5.找出部门10中所有经理(MANAGER) 和部门20中所有办事员（CLERK）的详细资料
SELECT * FROM emp WHERE
  (deptno=10 AND job='MANAGER') OR
  (deptno=20 AND job='CLERK');

--6.找出部门10中所有经理，部门20中所有的办事员，既不是经理又不是办事员，但是薪金大于或等于2000的所有员工的资料：
SELECT * FROM emp WHERE
(deptno=10 AND job='MANAGER') OR
(deptno=20 AND job='CLERK') OR
(job NOT IN('MANAGER','CLERK') AND sal>=2000);

--7.找出收取佣金（comm）的员工的不同工作：[DISTINCT->消除重复的关键字]
SELECT DISTINCT job FROM emp WHERE comm IS NOT NULL;

--8.找出不收取佣金或者佣金小于100的员工：
SELECT * FROM emp WHERE comm IS NULL OR comm<100;
