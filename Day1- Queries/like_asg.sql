-- get me all info who is working as IT_PROG or SA_REP

select * from EMPLOYEES
where JOB_ID in('IT_PROG','SA_REP');

-- how many employee are working is IT_PROG or SA_REP
select count(*) from EMPLOYEES
where JOB_ID in('IT_PROG','SA_REP');

-- how many employees making more than 8000
select count(*) from EMPLOYEES
where SALARY > 8000;

-- how many unique firstnames we have?
select count(distinct FIRST_NAME) from EMPLOYEES;

-- get me all employees information based on who is making more salary to low salary
select * from EMPLOYEES
order by SALARY desc;
-- desc 9-0 Z-A

-- tam tersi siralanasi  buda
select * from EMPLOYEES
order by SALARY asc;
-- asc 0-9 a-z


-- get me all emp info order by alphabetical based on firstname
select * from EMPLOYEES
order by FIRST_NAME asc;

-- NOTE: default order type is asc if you dont specify after column name
-- yani bua ssagi da ki yukari daki ile ayni sonuc veriyor
select * from EMPLOYEES
order by FIRST_NAME;

-- get me all employees whose first name starts with C
select * from EMPLOYEES
where FIRST_NAME like 'C%';


-- get me 5 letter first names where the middle char is z;
select * from EMPLOYEES
where FIRST_NAME like '__z__';
-- cünk her bir alt tre (_) bir karakteri temsil ediyor

-- get me first name where second char is u;
select * from EMPLOYEES
where FIRST_NAME like '_u%';


-- find me minimum salary;
select min(SALARY) from EMPLOYEES;

-- find me max salary;
select max(SALARY) from  EMPLOYEES;


select avg(SALARY) from EMPLOYEES;

-- round
-- 2 yazdik 2 basamakli olarak yuvarlayacak
-- eger 3 yazsa idik 2 basamakli olarak yuvarlayacak
select round(avg(SALARY),2) from EMPLOYEES;

select round(avg(SALARY),3) from EMPLOYEES;

select round(avg(SALARY)) from EMPLOYEES;


select sum(SALARY) from EMPLOYEES;






