-- how can we rename the column that we displayed
select FIRST_NAME as "given_name", LAST_NAME as "surname"
from EMPLOYEES;
-- kesme isareti "" icinde yazmaz isek hepsini büyük olarak yazacak
-- kesme isaretinin "" icine ne ve ne sekilde yazrasak onu alcagiz assgida

-- text functions, string mani.
-- java first_name+" "+last_name
-- in sql concat is ||
select FIRST_NAME || ' ' || LAST_NAME as "full_name"
from EMPLOYEES;


-- Task;
-- add @gmail.com and name new column to full_email
select EMAIL || '@gmail.com' as "full_email"
from EMPLOYEES;

-- making all lowercase
select lower(EMAIL || '@gmail.com') as "full_email"
from EMPLOYEES;

--upper case
select upper(EMAIL || '@gmail.com') as "full_email"
from EMPLOYEES;

-- length (value)
select FIRST_NAME, length(FIRST_NAME) as "lenght_name"
from EMPLOYEES;

select FIRST_NAME, length(FIRST_NAME) as "lenght_name"
from EMPLOYEES
order by "lenght_name" desc;

-- substr(colName,beIndex,NumberOfChar)
select substr(FIRST_NAME, 0, 1) || '.' || substr(LAST_NAME, 0, 1) as "initials"
from EMPLOYEES;

--VIEW
create view Emaillist_EU8Student as
select substr(FIRST_NAME,0,1) ||'.'|| substr(LAST_NAME,0,1) as "initials",
FIRST_NAME||' '||LAST_NAME as "full_name",lower(EMAIL||'@gmail.com') as "full_email"
from EMPLOYEES;

-- virtual machine 'de kendi email listemizi kendi istedigimiz sekilde olusturduk
select * from Emaillist_EU8Student;

select "full_name"
from Emaillist;


--to remove view
drop view Emaillist_EU8Student;
-- bu sefer de olsturdugumuz email listesini sildik









