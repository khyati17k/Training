
------javatpoint oracle query practice

CREATE TABLE customers  
( customer_id number(10) NOT NULL,  
  customer_name varchar2(50) NOT NULL,  
  city varchar2(50),  
  CONSTRAINT customers_pk PRIMARY KEY (customer_id)  
);  
SELECT * from customers;
--orcale query
---insert
INSERT INTO customers VALUES(101,'rahul','delhi'); 

---update 
UPDATE customers
SET customer_name = 'bob', city= 'london'
WHERE customer_id = 101;

----DELETE
delete from customers where customer_id=101;  
---TRUNCATE
truncate table customers;  

----DROP
drop table customers;

---CREATE
CREATE TABLE customers    
( id number(10) NOT NULL,    
  name varchar2(50) NOT NULL,    
  city varchar2(50),  
CONSTRAINT customers_pk PRIMARY KEY (id)      
);    

----ALTER
ALTER TABLE customers   
ADD age varchar2(50); 

INSERT INTO customers VALUES(101,'rahul','delhi'); 


CREATE TABLE suppliers
( supplier_id int NOT NULL,
  supplier_name char(50) NOT NULL
);

CREATE TABLE customer
( name char(50) NOT NULL,
  age int NOT NULL,
  address char(50),
  salary int NOT NULL
);
---INSERT
INSERT INTO CUSTOMER (NAME,AGE,ADDRESS,SALARY)
VALUES ('Ramesh', 32, 'Ahmedabad', 2000.00 );

INSERT INTO CUSTOMER (NAME,AGE,ADDRESS,SALARY)
VALUES ('Khilan', 25, 'Delhi', 1500.00 );

INSERT INTO CUSTOMER (NAME,AGE,ADDRESS,SALARY)
VALUES ('kaushik', 23, 'Kota', 2000.00 );

INSERT INTO CUSTOMER (NAME,AGE,ADDRESS,SALARY)
VALUES ('Chaitali', 25, 'Mumbai', 6500.00 );

INSERT INTO CUSTOMER (NAME,AGE,ADDRESS,SALARY)
VALUES ('Hardik', 27, 'Bhopal', 8500.00 );

INSERT INTO CUSTOMER (NAME,AGE,ADDRESS,SALARY)
VALUES ('Komal', 22, 'MP', 4500.00 );

INSERT INTO suppliers  
(supplier_id, supplier_name)  
VALUES  
(50, 'Flipkart');  
---insert with select 
INSERT INTO suppliers  
(supplier_id, supplier_name)  
SELECT age, address  
FROM customer  
WHERE age > 20;  
--select 
SELECT age, address, salary  
FROM customer  
WHERE  age < 25  
AND salary > '2000'  
ORDER BY age ASC, salary DESC;  
---insert all
INSERT ALL  
  INTO suppliers (supplier_id, supplier_name) VALUES (20, 'Google')  
  INTO suppliers (supplier_id, supplier_name) VALUES (21, 'Microsoft')  
  INTO suppliers (supplier_id, supplier_name) VALUES (22, 'Apple')
  SELECT * FROM dual;

---update
UPDATE suppliers  
SET supplier_name = 'Kingfisher'  
WHERE supplier_id = 20;  
---delete
DELETE FROM customer  
WHERE name = 'Komal'; 

DELETE FROM customer  
WHERE name = 'Hardik'  
AND age> 20;  

TRUNCATE TABLE customer ; 
CREATE TABLE  "CUSTOMER1"   
   (    "NAME" VARCHAR2(4000),   
    "AGE" NUMBER,   
    "SALARY" NUMBER,   
    "STATE" VARCHAR2(4000)  
   )  
   
INSERT INTO CUSTOMER1 (NAME,AGE,SALARY,STATE)
VALUES ('Ramesh', 32,2000.00, 'Bihar' );

INSERT INTO CUSTOMER1 (NAME,AGE,SALARY,STATE)
VALUES ('Khilan', 25,  1500.00,'Bihar' );

INSERT INTO CUSTOMER1 (NAME,AGE,SALARY ,STATE)
VALUES ('kaushik', 23,  2000.00, 'Delhi' );

INSERT INTO CUSTOMER1 (NAME,AGE,SALARY ,STATE)
VALUES ('Chaitali', 25, 6500.00,'Delhi' );

INSERT INTO CUSTOMER1 (NAME,AGE,SALARY ,STATE)
VALUES ('Hardik', 27,  8500.00 ,'Bihar' );

INSERT INTO CUSTOMER1 (NAME,AGE,SALARY ,STATE)
VALUES ('Komal', 22,  4500.00,'Delhi' );
---oracle clause
--DISTINCT
SELECT DISTINCT state  
FROM customer1;

SELECT DISTINCT name, age, salary  
FROM customer1  
WHERE age >= '25';  
 --order by
SELECT *  FROM customer1 
ORDER BY name;  
SELECT *  FROM customer1 
ORDER BY age DESC;  
--Group by
SELECT state, COUNT(*) AS "Number of customers"  
FROM customer1  
WHERE salary > 1000  
GROUP BY state;

CREATE TABLE  "EMPLOYEES"   
   (    "EMP_ID" NUMBER,   
    "NAME" VARCHAR2(4000),   
    "AGE" NUMBER,   
    "DEPARTMENT" VARCHAR2(4000),   
    "SALARY" NUMBER  
   )  
  INSERT INTO employees (EMP_ID, NAME, DEPARTMENT, AGE,SALARY) VALUES (105, 'Srinath', 'Aeronautics', 21, 33000);
   INSERT INTO employees (EMP_ID, NAME, DEPARTMENT, AGE,SALARY) VALUES (106, 'Alladin', 'Mechanical', 21, 12000);
    INSERT INTO employees (EMP_ID, NAME, DEPARTMENT, AGE,SALARY) VALUES (107, 'Billu', 'Hardwere', 23, 15000);
     INSERT INTO employees (EMP_ID, NAME, DEPARTMENT, AGE,SALARY) VALUES (108, 'Chaya', 'Softwere', 22, 24000);
      INSERT INTO employees (EMP_ID, NAME, DEPARTMENT, AGE,SALARY) VALUES (109, 'Dinesh', 'Softwere', 34, 32000);
       INSERT INTO employees (EMP_ID, NAME, DEPARTMENT, AGE,SALARY) VALUES (110, 'Ramesh', 'Softwere', 21, 20000);
       ---group by with min
  SELECT department,   
MIN(salary) AS "Lowest salary"  
FROM employees  
GROUP BY department;       
------Having
SELECT department,   
MIN(salary) AS "Lowest salary"  
FROM employees  
GROUP BY department  
HAVING MIN(salary) < 15000;

SELECT department,  
MAX(salary) AS "Highest salary"  
FROM employees  
GROUP BY department  
HAVING MAX(salary) > 30000;

----Oracle Misc
---AND & OR
SELECT * FROM employees 
WHERE EMP_ID >107 AND AGE <35 OR AGE>25;

---Between
SELECT * FROM EMPLOYEES 
WHERE age BETWEEN 20 AND 28 ;
---COMPARISION OPERATOR
select * from EMPLOYEES where age = 21;

select * from EMPLOYEES where age <> 21;

select * from EMPLOYEES where age != 21;

select * from EMPLOYEES where age > 21;
 
 select * from EMPLOYEES where age > = 21;
 select * from EMPLOYEES where age < 21;
 select * from EMPLOYEES where age <= 21;

--IN
SELECT * from EMPLOYEES 
WHERE name IN ('Ramesh', 'Chaya', 'Billu');
SELECT * FROM EMPLOYEES;

CREATE TABLE Order_address
( supplier_id int NOT NULL,
  supplier_address char(50) NOT NULL
);

INSERT ALL  
  INTO Order_address (supplier_id, supplier_address) VALUES (20, 'US')  
  INTO Order_address (supplier_id, supplier_address) VALUES (21, 'Canada')  
  INTO Order_address (supplier_id, supplier_address) VALUES (23, 'UK')
  SELECT * FROM dual;
-----intersect  
  SELECT supplier_id  
FROM suppliers  
INTERSECT  
SELECT supplier_id  
FROM Order_address;  
----IS NOT NULL
SELECT * FROM employees 
where name is not null;

---Like
select * from employees where name like 'S%';

select * from employees where emp_id like '10_';

select * from employees where name NOT like 'S%';

----Check constrain
CREATE TABLE student 
(id numeric(4), 
name varchar2(50), 
CONSTRAINT check_id 
CHECK(id  BETWEEN 1 and 10)); 
