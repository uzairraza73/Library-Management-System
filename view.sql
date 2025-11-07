
-- BOOK DETAILS WITH THE AUTHOR AND THE PUBLISHER:
create view View_BookDetails AS
select 
    b.book_id,
    b.title,
    a.author_name,
    p.pub_name AS publisher_name,
    b.genre,
    b.yearPublished,
    b.copiesAvailable
from book b
join author a ON b.author_id = a.author_id
join publisher p ON b.pub_id = p.pub_id;

select * from View_BookDetails


-- ISSUED BOOK WITH MEMBER INFORMATION:
create view View_IssuedBooks AS
select 
    ib.issue_id,
    m.first_name,
    m.last_name,
    b.title AS book_title,
    ib.issue_date,
    ib.due_date,
    ib.return_date,
    ib.fine
from issueBook ib
join member m ON ib.member_id = m.member_id
join book b ON ib.book_id = b.book_id;

select * from View_IssuedBooks


--MEMBER BORROWING HISTORY:
create view View_MemberHistory AS
select
    m.member_id,
    CONCAT(m.first_name, ' ', m.last_name) AS member_name,
    b.title AS book_title,
    ib.issue_date,
    ib.due_date,
    ib.return_date,
    ib.fine
from member m
join issueBook ib ON m.member_id = ib.member_id
join book b ON ib.book_id = b.book_id;

select * from View_MemberHistory


-- AVAILABLE BOOKS:
create view View_AvailableBooks AS
select 
    b.book_id,
    b.title,
    a.author_name,
    p.pub_name AS publisher_name,
    b.genre,
    b.copiesAvailable
from book b
join author a ON b.author_id = a.author_id
join publisher p ON b.pub_id = p.pub_id
where b.copiesAvailable > 0;

select * from View_AvailableBooks


--OVERDUE BOOKS:
create view View_OverdueBooks AS
select 
    ib.issue_id,
    m.first_name,
    m.last_name,
    b.title AS book_title,
    ib.due_date,
    ib.fine
from issueBook ib
join member m ON ib.member_id = m.member_id
join book b ON ib.book_id = b.book_id
WHERE ib.due_date < CAST(GETDATE() AS date);

select * from View_OverdueBooks
DROP VIEW View_OverdueBooks;


