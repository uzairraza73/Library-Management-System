
-- RETURN A BOOK:
BEGIN TRANSACTION;

UPDATE IssueBook
SET return_date = CAST(GETDATE() AS date),
    Fine = CASE 
        WHEN CAST(GETDATE() AS date) > due_date THEN DATEDIFF(day, due_date, CAST(GETDATE() AS date)) * 1.00
        ELSE 0 
    END
WHERE issue_id = 1;

UPDATE book 
SET copiesAvailable = copiesAvailable + 1 
WHERE book_id = 1;

COMMIT;


-- ISSUE A BOOK:

BEGIN TRANSACTION;

INSERT INTO issueBook (book_id, member_id, due_date)
VALUES (1, 1, DATEADD(DAY, 14, CAST(GETDATE() AS date)));

UPDATE Book 
SET copiesAvailable = copiesAvailable - 1 
WHERE book_id = 1;

COMMIT;
