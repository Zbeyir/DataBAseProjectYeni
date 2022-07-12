select name, isbn, year, author, description from books
where name = 'Chordeiles minor';

select * from users;

select count(*) from users;

select count(*) from books;

select count(*) from book_borrow;

select * from book_borrow;

select * from book_borrow
where is_returned = false;


