
-- VIEW ALL AVAILABLE BOOKS:
SELECT book_id, title, genre, copiesAvailable
FROM book
WHERE copiesAvailable > 0;


-- VIEW ISSUED BOOKS:
SELECT ib.issue_id, m.first_name, m.last_name, b.title, ib.issue_date, ib.due_date, ib.return_date, ib.fine
FROM issueBook ib
JOIN member m ON ib.member_id = m.member_id
JOIN book b ON ib.book_id = b.book_id;


-- CHECK OVERDUE BOOK:
SELECT m.first_name, m.last_name, b.title, ib.due_date
FROM issueBook ib
JOIN member m ON ib.member_id = m.member_id
JOIN book b ON ib.book_id = b.book_id
WHERE ib.return_date IS NULL 


-- SEARCH BOOK BY TITLE OR AUTHOR:
SELECT b.title, a.author_name AS Author, p.pub_name AS Publisher, b.copiesAvailable
FROM book b
JOIN author a ON b.author_id = a.author_id
JOIN publisher p ON b.pub_id = p.pub_id
WHERE b.title LIKE '%Hobbit%' OR a.author_name LIKE '%Tolkien%';



