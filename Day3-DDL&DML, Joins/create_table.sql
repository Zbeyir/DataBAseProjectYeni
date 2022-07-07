/*
 create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
 */

CREATE table ScrumTeamZüb(
        Emp_ID INTEGER primary key,
        FirstName varchar(30) not null,
        lastName varchar(30),
        JobTitle varchar(20)
);

select * from ScrumTeamZüb;

/*
 INSERT INTO tableName (column1, column2,…)
VALUES (value1, value2 … );
 */

INSERT INTO  ScrumTeamZüb (emp_id, firstname, lastname, jobtitle)
VALUES (1,'Severus','Snap','Tester');

insert into ScrumTeamZüb values (2,'Harold','Finch','Developer');

insert into ScrumTeamZüb values (3,'Phoebe','Buffay','SM');

insert into ScrumTeamZüb values (4,'Michael','Scofield','PO');

--how to update data
/*
UPDATE table_name
SET column1 = value1,
column2 = value2 , …
WHERE condition;
*/

UPDATE ScrumTeamZüb
set JOBTITLE = 'Tester'
where EMP_ID = 4;

--Delete from table
/*
DELETE FROM table_name
WHERE condition;
*/

delete from ScrumTeamZüb
where EMP_ID = 2;

--saving changes
commit ;
-- bu kaydediyor yaptiklarimizi, cünkü ara verip ayrildin  mi
-- tekrar tüm sürecleri bastan yapman gerekiyor

select * from ScrumTeamZüb;
