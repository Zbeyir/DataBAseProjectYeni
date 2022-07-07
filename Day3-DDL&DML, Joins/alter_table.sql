select * from SCRUMTEAMZÜB;

--adding new column
ALTER table SCRUMTEAMZÜB add salary INTEGER;

--update existing employees salary
update SCRUMTEAMZÜB set salary = 100000 where EMP_ID = 1;

update SCRUMTEAMZÜB set salary = 900000 where EMP_ID = 3;

update SCRUMTEAMZÜB set salary = 1200000 where EMP_ID = 4;

--rename the column
alter table SCRUMTEAMZÜB rename column salary to annual_salary;

--delete, drop column
alter table SCRUMTEAMZÜB drop column annual_salary;

--how to change table name ?
alter table SCRUMTEAMZÜB rename to agileteam;
-- bu kod adini degistirdi

select * from agileteam;

--truncate, if we want to delete all data from the table, but still keep
--the table structure, we use truncate

truncate table  agileteam;
--bu kod icini sildi


--If we want to delete the table and data together
drop table agileteam;
--artik ne yaparsak yapalim tekra geri gelmiyece by by dedi bize



commit;
