select*from EMPLOYEES;
-- reads all column from employees table
-- ctrl + space--> neyi sececegmizi gösteriyor

select * from DEPARTMENTS;

-- reads all column from departments table
-- ve hangisinin ciktisini almak istiyorsak mouse 'i onun üstünde tutup run yapacagiz

select FIRST_NAME from EMPLOYEES;
-- get only first name from employees table

 -- display city names
select CITY from LOCATIONS;

-- get me first name, last name, salary
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES;

-- get me street address and postal code
select STREET_ADDRESS, POSTAL_CODE from LOCATIONS;

select distinct FIRST_NAME from EMPLOYEES;
-- remove duplicates
