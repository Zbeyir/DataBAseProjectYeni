create table DevelopersZ(
                           Id_Number Integer primary key,
                           Names varchar(30),
                           Salary Integer
);
create table TestersZ(
                        Id_Number Integer primary key,
                        Names varchar(30),
                        Salary Integer
);

insert into developersZ values (1, 'Mike', 155000);
insert into developersZ values (2, 'John', 142000);
insert into developersZ values (3, 'Steven', 850000);
insert into developersZ values (4, 'Maria', 120000);
insert into testersZ values (1, 'Steven', 110000);
insert into testersZ values(2, 'Adam', 105000);
insert into testersZ values (3, 'Lex', 100000);

commit work;