---1	 Display all the information of the EMP table
         SELECT empno,ename,job,mgr,hiredate,sal,comm,deptno,branchno 
         FROM emp;

---2	 Display unique Jobs from EMP table
         SELECT DISTINCT job FROM emp;
---3	 List the emps in the asc order of their Salaries
	     SELECT * FROM emp
         ORDER BY sal;
---4	 List the details of the emps in asc order of the Dptnos and desc of Jobs
          SELECT * FROM emp
          ORDER BY deptno,job DESC;
---5	 Display all the unique job groups in the descending order?
           SELECT DISTINCT job FROM emp
           ORDER BY job DESC;
---6	 Display all the details of all ‘Mgrs’
	    SELECT * FROM emp WHERE empno IN ( SELECT mgr FROM emp);
---7	 List the emps who joined before 1981
         SELECT * FROM emp
         WHERE hiredate < ('01-jan-81');
---8	 List the Empno, Ename, Sal, Daily sal of all emps in the asc order of Annsal
         SELECT empno ,ename ,sal,sal/30 daily_sal,12*sal annsal fROM emp 
         ORDER BY annsal ASC; 
---9	 Display the Empno, Ename, job, Hiredate, Exp of all Mgrs
         SELECT empno, ename, job ,hiredate,months_between(sysdate,hiredate)/12 Exp
         FROM emp 
         WHERE job='MANAGER' ;
---10	 List the Empno, Ename, Sal, Exp of all emps working for Mgr 7369
         SELECT empno,ename,sal,months_between(sysdate,hiredate)/12 Exp 
         FROM emp 
         where mgr ='7369';
---11	 Display all the details of the emps whose Comm  Is more than their Sal
         SELECT * FROM emp WHERE comm>sal;
---12	 List the emps along with their Exp and Daily Sal is more than Rs 100
         SELECT empno,ename,job,mgr,hiredate,sal,comm,deptno,branchno, months_between(sysdate,hiredate)/12 Exp 
         FROM emp WHERE sal/30 >100;
         
---13	 List the emps who are either ‘CLERK’ or ‘ANALYST’ in the Desc order
          SELECT * FROM emp
          WHERE job='CLERK' or job='ANALYST'
          ORDER BY empno DESC;
---14	 List the emps who joined on 1-MAY-81,3-DEC-81,17-DEC-81,19-JAN-80 in asc order of seniority
         SELECT * FROM emp 
         WHERE hiredate IN ('01-may-81','03-dec-81','17-dec-81','19-jan-80') 
         ORDER BY hiredate ASC;
---15	 List the emp who are working for the Deptno 10 or20
         SELECT * FROM emp 
         WHERE deptno = 10 OR deptno = 20 ; 
---16	 List the emps who are joined in the year 81
          SELECT * FROM emp 
          WHERE hiredate BETWEEN '01-jan-81' AND '31-dec-81';
---17	 List the emps Who Annual sal ranging from 22000 and 45000
         SELECT * FROM emp 
         WHERE sal*12 BETWEEN 22000 and 45000;
---18	 List the Enames those are having five characters in their Names
         SELECT ename FROM emp 
         WHERE length (ename) = 5; 
---19	 List the Enames those are starting with ‘S’ and with five characters
         SELECT ename FROM emp 
         WHERE ename LIKE 'S%' and length (ename) = 5; 
---20	 List the emps those are having four chars and third character must be ‘r’
         SELECT * FROM emp 
         WHERE length(ename) = 4 AND ename LIKE '__R%';
---21	 List the Five character names starting with ‘S’ and ending with ‘H’
          SELECT * FROM emp 
          WHERE length(ename) = 5 AND ename LIKE 'S%H';
---22	 List the emps who joined in January
         SELECT * FROM emp 
         WHERE to_char (hiredate,'mon') = 'jan'; 
---23	 List the emps whose names having a character set ‘ll’ together
          SELECT * FROM emp 
          WHERE ename LIKE '%LL%'; 
---24	 List the emps who does not belong to Deptno 20
         SELECT * FROM emp 
         WHERE deptno NOT IN (20);
---25	 List all the emps except ‘PRESIDENT’ & ‘MGR” in asc order of Salaries
         SELECT * FROM emp 
         WHERE job NOT IN ('PRESIDENT','MANAGER') 
         ORDER BY sal asc;
---26	 List the emps whose Empno not starting with digit78
         SELECT * FROM emp
         WHERE
           empno NOT LIKE '78%';
---27	 List the emps who are working under ‘MGR’
         SELECT e.ename, m.ename FROM emp e ,emp m 
         WHERE e.mgr = m.empno ;
---28	 List the emps who joined in any year but not belongs to the month of March
         SELECT * FROM emp 
         WHERE to_char (hiredate,'mon') <> 'mar' ;
    
---29	 List all the Clerks of Deptno 20
        SELECT * FROM emp
        WHERE job='CLERK' AND deptno='20';
---30	 List the emps of Deptno 30 or 10 joined in the year 1981
         SELECT * FROM emp 
         WHERE to_char (hiredate,'yyyy') = 1981
         AND (deptno = 30 OR deptno =10) ;
---31	 Display the details of SMITH
         SELECT * FROM emp 
         WHERE ename = 'SMITH' ; 

---32	 Display the location of SMITH
         SELECT location FROM emp e , branch b 
         WHERE e.ename = 'SMITH' 
         AND e.branchno = b.branchno ; 
         