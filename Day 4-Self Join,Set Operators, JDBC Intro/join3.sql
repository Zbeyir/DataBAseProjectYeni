--get me first_name,last_name and department name for all employees

select * from EMPLOYEES;

select * from  DEPARTMENTS;

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
from EMPLOYEES e join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--yukarida bir eksik cünkü bir kisinin adressId null

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;


select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where e.DEPARTMENT_ID is null ;

-- yukarida ki ve assagida ki sonuc ayni

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where d.DEPARTMENT_ID is null ;

--get me first_name,last_name and department_name,city for all employees
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,city
from EMPLOYEES e join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
JOIN LOCATIONS l
ON d.LOCATION_ID = l.LOCATION_ID;

--get me firstname,lastname and deparment name, city,country_name for all employees;
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,city,city,country_name
from EMPLOYEES e join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
JOIN LOCATIONS l
ON d.LOCATION_ID = l.LOCATION_ID
join COUNTRIES c
on c.COUNTRY_ID = l.COUNTRY_ID;



